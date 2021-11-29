package com.helper.back.controller;

import com.helper.back.common.PageParam;
import com.helper.back.common.QueryParam;
import com.helper.back.common.Result;
import com.helper.back.entity.Word;
import com.helper.back.service.WordService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.sql.ResultSet;

@RestController
@RequestMapping("/api/v1/word")
public class WordController {

    @Resource
    private WordService wordService;

    @GetMapping("/words")
    public Result<?> words(PageParam param) {
        return Result.success(wordService.words(param));
    }

    @GetMapping("/review")
    public Result<?> review(QueryParam param) {
        return Result.success(wordService.review(param));
    }

    @PostMapping
    public Result<?> add(@RequestBody Word word) {
        if (StringUtils.isBlank(word.getWordEn()) || StringUtils.isBlank(word.getWordDescription())) {
            return Result.fail("有没传的字段");
        }
        wordService.add(word);
        return Result.success();
    }

    @PutMapping
    public Result<?> update(@RequestBody Word word) {
        wordService.update(word);
        return Result.success();
    }

    @PatchMapping("/forget/{id}")
    public Result<?> forget(@PathVariable Integer id) {
        wordService.forget(id);
        return Result.success();
    }

    @PatchMapping("/remember/{id}")
    public Result<?> remember(@PathVariable Integer id) {
        wordService.remember(id);
        return Result.success();
    }
}
