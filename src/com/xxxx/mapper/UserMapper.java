package com.xxxx.mapper;

import com.xxxx.model.Menu;
import com.xxxx.model.SMenu;
import com.xxxx.model.User;

import java.util.List;

/**
 * 用户接口类
 */
public interface UserMapper {
    public User queryUserByName(String userName);
    public List<Menu> mainMenu();
    public List<SMenu> smenu(int id);
    public List<String> test(String name);
    public List<String> test_1();

}

