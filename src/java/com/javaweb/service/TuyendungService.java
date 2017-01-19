/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import com.javaweb.hibernate.util.HibernateUtil;
import com.javaweb.model.Tuyendung;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author DuongNguyen
 */
public class TuyendungService {

    public ArrayList<Tuyendung> GetAllTuyendung() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        ArrayList<Tuyendung> listTuyendung = new ArrayList<Tuyendung>();
        try {
            tx = session.getTransaction();
            tx.begin();

            Query query = session.createQuery("from Tuyendung");
            listTuyendung = (ArrayList) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println("Loi" + e.toString());
        } finally {
            session.close();
        }

        return listTuyendung;
    }
}
