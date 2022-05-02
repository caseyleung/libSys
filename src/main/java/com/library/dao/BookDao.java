package com.library.dao;

import com.library.bean.Book;
import com.library.bean.ClassInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class BookDao {

    private final static String NAMESPACE = "com.library.dao.BookDao.";
    @Resource
    private SqlSessionTemplate sqlSessionTemplate;

    public int matchBook(final String searchWord) {
        String search = "%" + searchWord + "%";
        return sqlSessionTemplate.selectOne(NAMESPACE + "matchBook", search);
    }

    public ArrayList<Book> queryBookByType(final String type) {
        String search = "%" + type + "%";
        List<Book> result = sqlSessionTemplate.selectList(NAMESPACE + "queryBookByType", search);
        return (ArrayList<Book>) result;
    }

    public ArrayList<Book> queryBook(final String searchWord) {
        String search = "%" + searchWord + "%";
        System.out.println("====================="+search);
        List<Book> result = sqlSessionTemplate.selectList(NAMESPACE + "queryBook", search);
        System.out.println(result.toString());
        return (ArrayList<Book>) result;
    }

    //获取全部图书
    public ArrayList<Book> getAllBooks() {
        List<Book> result = sqlSessionTemplate.selectList(NAMESPACE + "getAllBooks");
        //result 是 ArrayList<Book> 类型的
        return (ArrayList<Book>) result;
    }

    public ArrayList<ClassInfo> getClassInfo(){
        List<ClassInfo> result =sqlSessionTemplate.selectList(NAMESPACE+"querryClassInfo");
        return (ArrayList<ClassInfo>) result;
    }

    public int addBook(final Book book) {
        return sqlSessionTemplate.insert(NAMESPACE + "addBook", book);
    }

    public Book getBook(final long bookId) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getBook", bookId);
    }

    public int editBook(final Book book) {
        return sqlSessionTemplate.update(NAMESPACE + "editBook", book);
    }

    public int deleteBook(final long bookId) {
        return sqlSessionTemplate.delete(NAMESPACE + "deleteBook", bookId);
    }
}
