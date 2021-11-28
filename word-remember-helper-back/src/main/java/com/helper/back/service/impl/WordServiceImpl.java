package com.helper.back.service.impl;

import com.helper.back.common.PageParam;
import com.helper.back.entity.Word;
import com.helper.back.repository.WordRepository;
import com.helper.back.service.WordService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDateTime;

@Service
public class WordServiceImpl implements WordService {

    @Resource
    private WordRepository wordRepository;

    @Override
    public Page<Word> words(PageParam param) {
        return wordRepository.findAll(PageRequest.of(param.getCurrent(), param.getPageSize(), Sort.by("rememberDate").descending()));
    }

    @Override
    public void add(Word word) {
        word.setUnRememberTimes(0);
        word.setRememberDate(LocalDateTime.now());
        wordRepository.save(word);
    }
}
