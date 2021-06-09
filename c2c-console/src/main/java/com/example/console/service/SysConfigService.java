package com.example.console.service;



import java.util.List;

public interface SysConfigService {
    int save(SysConfig record);

    Object checkDateRange();

    int delete(SysConfig record);

    int delete(List<SysConfig> records);

    SysConfig findById(Long id);

    SysConfig findByKey(String key);

    PageResult selectPage(PageRequest pageRequest);

    List<SysConfig> selectAll();

}
