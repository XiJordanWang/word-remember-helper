package com.helper.back.service.impl;

import com.helper.back.common.PageParam;
import com.helper.back.common.QueryParam;
import com.helper.back.entity.Word;
import com.helper.back.repository.WordRepository;
import com.helper.back.service.WordService;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class WordServiceImpl implements WordService {

    @Resource
    private WordRepository wordRepository;

    @Override
    public Page<Word> words(PageParam param) {
        return wordRepository.findAll(PageRequest.of(param.getCurrent(), param.getPageSize(), Sort.by("rememberDate").descending()));
    }

    @Override
    public List<Word> review(QueryParam param) {
        return wordRepository.findAll(disRemember().and(lastStudy()));
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

    private Specification<Word> disRemember() {
        return (root, query, criteriaBuilder) -> criteriaBuilder.gt(root.get("unRememberTimes"), 0);
    }

    private Specification<Word> lastStudy() {
        return (root, query, criteriaBuilder) -> criteriaBuilder.gt(root.get("unRememberTimes"), 0);
    }
}
