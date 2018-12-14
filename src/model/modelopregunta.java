package model;

import include.preguntas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modelopregunta extends conexion{

    public boolean agregarpregunta(preguntas preg){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "INSERT INTO preguntas_test_inteligencia (id_pregunta_test, num_pregunta, pregunta, id_inteligencias) VALUES (?, ?,?,?)";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,preg.getId_pregunta());
            pst.setInt(2,preg.getNum_pregunta());
            pst.setString(3,preg.getPregunta());
            pst.setInt(4,preg.getId_inteligencia());


            if(pst.executeUpdate() == 1){
                flag = true;
            }

        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {

            }
        }
        return flag;
    }

    public ArrayList<preguntas> consultarpreguntas(){
        ArrayList<preguntas> pre = new ArrayList<preguntas>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM preguntas_test_inteligencia ";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                pre.add(new preguntas(rs.getInt("id_pregunta_test"),
                        rs.getInt("num_pregunta"),
                        rs.getString("pregunta"),
                        rs.getInt("id_inteligencias")));
            }
        } catch (Exception e) {

        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {

            }
        }
        return pre;
    }

    public ArrayList<preguntas> consultaanad(){
        ArrayList<preguntas> pre = new ArrayList<preguntas>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT preguntas_test_inteligencia.*, inteligencias.tipo_de_inteligencia FROM preguntas_test_inteligencia INNER JOIN inteligencias on inteligencias.id_inteligencias = preguntas_test_inteligencia.id_inteligencias";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                pre.add(new preguntas(rs.getInt("id_pregunta_test"),
                        rs.getInt("num_pregunta"),
                        rs.getString("pregunta"),
                        rs.getInt("id_inteligencias"),
                        rs.getString("tipo_de_inteligencia")));
            }
        } catch (Exception e) {

        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {

            }
        }
        return pre;
    }

    public ArrayList<preguntas> consultapreguntasid(int id_pregunta_test){
        ArrayList<preguntas> preg = new ArrayList<preguntas>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM preguntas_test_inteligencia WHERE id_pregunta_test = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, id_pregunta_test);
            rs = pst.executeQuery();
            while (rs.next()){
                preg.add(new preguntas(rs.getInt("id_pregunta_test"),
                        rs.getInt("num_pregunta"),
                        rs.getString("pregunta"),
                        rs.getInt("id_inteligencias")));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return preg;
    }
    public boolean actualizarpreguntas(preguntas preng){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "UPDATE preguntas_test_inteligencia SET id_inteligencias = ?, num_pregunta = ?, pregunta = ?, id_inteligencias = ? WHERE id_pregunta_test = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, preng.getId_pregunta());
            pst.setInt(2,preng.getNum_pregunta());
            pst.setString(3, preng.getPregunta());
            pst.setInt(4, preng.getId_inteligencia());
            pst.setInt(5, preng.getId_pregunta());

            if(pst.executeUpdate() == 1){
                flag = true;
            }

        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception a) {
                System.out.println(a.getMessage());
            }
        }
        return flag;
    }

    public boolean eliminarpreguntas(int eliminarpreguntas){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM preguntas_test_inteligencia WHERE id_pregunta_test = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, eliminarpreguntas);


            if(pst.executeUpdate() == 1){
                flag = true;
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }

    public ArrayList<preguntas> consultaiddoble(int idinteligencia){
        ArrayList<preguntas> preguntasss = new ArrayList<preguntas>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT preguntas_test_inteligencia.*, inteligencias.tipo_de_inteligencia FROM preguntas_test_inteligencia INNER JOIN inteligencias on inteligencias.id_inteligencias = preguntas_test_inteligencia.id_inteligencias WHERE id_pregunta_test = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idinteligencia);
            rs = pst.executeQuery();
            while (rs.next()){
                preguntasss.add(new preguntas(rs.getInt("id_pregunta_test"),
                        rs.getInt("num_pregunta"),
                        rs.getString("pregunta"),
                        rs.getInt("id_inteligencias"),
                        rs.getString("tipo_de_inteligencia")));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return preguntasss;
    }
}
