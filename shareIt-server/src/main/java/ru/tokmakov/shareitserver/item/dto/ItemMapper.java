package ru.tokmakov.shareitserver.item.dto;

import ru.tokmakov.shareitserver.item.model.Item;

public class ItemMapper {
    private ItemMapper() {

    }

    public static Item dtoToItem(ItemDto itemDto) {
        Item item = new Item();
        item.setName(itemDto.getName());
        item.setDescription(itemDto.getDescription());
        item.setAvailable(itemDto.getAvailable());
        item.setRequestId(itemDto.getRequestId() );
        return item;
    }
}