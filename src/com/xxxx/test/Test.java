package com.xxxx.test;

import com.xxxx.model.Menu;
import com.xxxx.model.SMenu;
import com.xxxx.model.User;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        // 获取sqlSession对象
        SqlSession session = GetSqlSession.createSqlSession();
        // 得到对应Mapper
        UserMapper userMapper = session.getMapper(UserMapper.class);
        // 调用方法，返回用户对象
        List<String>list=userMapper.test_1();


        System.out.println(list);
    }
}
