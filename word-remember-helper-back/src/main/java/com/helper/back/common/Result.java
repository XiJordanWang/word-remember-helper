package com.helper.back.common;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Result<T> {
    private Integer code;
    private String msg;
    private T data;

    public static Result<?> success() {
        return Result.builder().code(200).build();
    }

    public static Result<Object> success(Object data) {
        return Result.builder().code(200).data(data).build();
    }

    public static Result<?> fail(String msg) {
        return Result.builder().code(500).msg(msg).build();
    }
}
