/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author PC
 */
public class StudentDBContext extends DBContext {

    public ArrayList<Student> getAll() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "SELECT [sid]\n"
                    + "      ,[image]\n"
                    + "      ,[fname]\n"
                    + "      ,[lname]\n"
                    + "      ,[gender]\n"
                    + "      ,[dob]\n"
                    + "      ,[cid]\n"
                    + "  FROM [Student] where cid =1";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("sid"));
                s.setImage(rs.getString("image"));
                s.setFirst_name(rs.getString("fname"));
                s.setLast_name(rs.getString("lname"));
                s.setGender(rs.getBoolean("gender"));
                s.setDob(rs.getDate("dob"));
                s.setCid(rs.getInt("cid"));
                
                students.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }
}
