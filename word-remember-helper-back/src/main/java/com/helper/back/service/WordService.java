package com.helper.back.service;

import com.helper.back.common.PageParam;
import com.helper.back.common.QueryParam;
import com.helper.back.entity.Word;
import org.springframework.data.domain.Page;

import java.util.List;

public interface WordService {

    Page<Word> words(PageParam param);

    List<Word> showForgets();

    List<Word> review(QueryParam param);

    List<Word> randomReview(Integer total);

    void add(Word word);

    void update(Word word);

    void forget(Integer id);

    void remember(Integer id);
}
