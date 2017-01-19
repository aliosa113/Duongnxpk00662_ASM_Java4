/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.HibernateUtil;
import com.javaweb.model.Sanpham;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author DuongNguyen
 */
public class SanPhamService {

    //Lay tat ca san pham
    public ArrayList<Sanpham> GetAllSanpham() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Sanpham> listSanpham = new ArrayList<Sanpham>();
        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Sanpham");
            listSanpham = (ArrayList) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println("Error!" + e.toString());
        } finally {
            session.close();
        }
        return listSanpham;
    }

    //Them or sua san pham
    public boolean InsertSanpham(Sanpham sp) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            session.saveOrUpdate(sp);
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

    //Get San pham ID
    public Sanpham GetSanphamID(String SanphamID) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            tx.commit();

            String strQuery = "from Sanpham where IDSanPham =" + SanphamID;
            Query query = session.createQuery(strQuery);
            Sanpham user = (Sanpham) query.uniqueResult();
            return user;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                System.out.println(e.toString());
            }
        } finally {
            session.close();
        }
        return null;
    }

    //Xoa San Pham
    public boolean DeleteSanpham(int idsp) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.getTransaction();
            tx.begin();
            //Query query = session.createQuery("delete from Sanpham where idsanpham = " + idsp);
            Sanpham sp = new Sanpham();
            sp.setIdsanpham(idsp);
            session.delete(sp);
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

}
