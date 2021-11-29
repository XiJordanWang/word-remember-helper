package com.helper.back.service.impl;

import com.helper.back.common.PageParam;
import com.helper.back.common.QueryParam;
import com.helper.back.entity.Word;
import com.helper.back.repository.WordRepository;
import com.helper.back.service.WordService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class WordServiceImpl implements WordService {

    @Resource
    private WordRepository wordRepository;

    @Resource
    private EntityManagerFactory entityManagerFactory;

    @Override
    public Page<Word> words(PageParam param) {
        return wordRepository.findAll(PageRequest.of(param.getCurrent(), param.getPageSize(), Sort.by("rememberDate").descending()));
    }

    @Override
    public List<Word> review(QueryParam param) {
        List<Word> list = wordRepository.findAll((disRemember().or(whereLastStudyDate()).or(isRememberFalse())));
        Collections.shuffle(list);
        return list;
    }

    @Override
    public void add(Word word) {
        word.setUnRememberTimes(0);
        word.setRememberDate(LocalDateTime.now());
        word.setIsRemember(false);
        wordRepository.save(word);
    }

    @Override
    public void update(Word word) {
        Optional<Word> optional = wordRepository.findById(word.getId());
        Word query = new Word();
        if (optional.isPresent()) {
            query = optional.get();
        }
        query.setUnRememberTimes(word.getUnRememberTimes());
        wordRepository.save(query);
    }

    @Override
    public void forget(Integer id) {
        Optional<Word> optional = wordRepository.findById(id);
        Word query = new Word();
        if (optional.isPresent()) {
            query = optional.get();
        }
        query.setUnRememberTimes(query.getUnRememberTimes() + 1);
        query.setIsRemember(false);
        wordRepository.save(query);
    }

    @Override
    public void remember(Integer id) {
        Optional<Word> optional = wordRepository.findById(id);
        Word query = new Word();
        if (optional.isPresent()) {
            query = optional.get();
        }
        query.setIsRemember(true);
        wordRepository.save(query);
    }

    private Specification<Word> disRemember() {
        return (root, query, criteriaBuilder) -> criteriaBuilder.gt(root.get("unRememberTimes"), 0);
    }

    private Specification<Word> whereLastStudyDate() {
        LocalDateTime lastStudyDate = this.lastStudyDate();
        LocalDateTime startDate = lastStudyDate.withHour(LocalDateTime.MIN.getHour()).withMinute(LocalDateTime.MIN.getMinute()).withSecond(LocalDateTime.MIN.getSecond()).withNano(LocalDateTime.MIN.getNano());
        LocalDateTime endDate = lastStudyDate.withHour(LocalDateTime.MAX.getHour()).withMinute(LocalDateTime.MAX.getMinute()).withSecond(LocalDateTime.MAX.getSecond()).withNano(LocalDateTime.MAX.getNano());
        return (root, query, criteriaBuilder) -> criteriaBuilder.between(root.get("rememberDate"), startDate, endDate);
    }

    private Specification<Word> isRememberFalse() {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("isRemember"), false);
    }

    private LocalDateTime lastStudyDate() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        return (LocalDateTime) entityManager.createQuery("select max(rememberDate) from Word ").getSingleResult();
    }
}
