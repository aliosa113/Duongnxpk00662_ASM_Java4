/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.HibernateUtil;
import com.javaweb.model.Users;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author DuongNguyen
 */
public class UserService {

    //Cap nhat Users
    public boolean InsertUser(Users user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(user);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return false;
    }
    
    //Xoa Users
    public boolean DeleteUser(int idus) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            Users us = new Users();
            us.setIdusers(idus);
            session.delete(us);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }

        return false;
    }

    //Lay Users theo email hoac username
    public Users GetUserByEmailOrUserName(String GiaTriNguoiDungNhap) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Users where email='" + GiaTriNguoiDungNhap + "'or username = '" + GiaTriNguoiDungNhap + "' ";
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }

    
    //Kiem tra dang nhap
    public boolean CheckLogin(String GiaTriNhap, String MatKhau) {
        Users user = GetUserByEmailOrUserName(GiaTriNhap);
        if (user == null) {
            return false;
        } else if (user.getPassword().equals(MatKhau)) {
            return true;
        } else {
            return false;
        }
    }

    
    //Lay tat ca Users
    public ArrayList<Users> GetAllUsers() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Users> listUsers = new ArrayList<Users>();
        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Users");
            listUsers = (ArrayList) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println("Loi" + e.toString());
        } finally {
            session.close();
        }

        return listUsers;
    }

    //Lay Users theo ID
    public Users GetUserById(String userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            String strQuery = "from Users where idusers= " + userId;
            Query query = session.createQuery(strQuery);
            Users user = (Users) query.uniqueResult();
            tx.commit();
            return user;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e.toString());
        } finally {
            session.close();
        }
        return null;
    }
}
