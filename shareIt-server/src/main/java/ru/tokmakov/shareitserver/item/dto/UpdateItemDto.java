package ru.tokmakov.shareitserver.item.dto;

import lombok.Data;

@Data
public class UpdateItemDto {
    private String name;
    private String description;
    private Boolean available;
}