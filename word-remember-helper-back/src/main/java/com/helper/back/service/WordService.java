package com.helper.back.service;

import com.helper.back.common.PageParam;
import com.helper.back.entity.Word;
import org.springframework.data.domain.Page;

public interface WordService {

    Page<Word> words(PageParam param);

    void add(Word word);
}
