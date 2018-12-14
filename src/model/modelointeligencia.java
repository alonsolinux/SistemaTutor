package model;

import include.inteligencia;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modelointeligencia extends conexion{

    public boolean agregarinteligencia(inteligencia Inteli){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "INSERT INTO inteligencias (id_inteligencias, tipo_de_inteligencia ) VALUES (?, ?)";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,Inteli.getId_inteligencia());
            pst.setString(2,Inteli.getTipo_de_inteligencia());


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

    public ArrayList<inteligencia> consultainteligencia(){
        ArrayList<inteligencia> inteli = new ArrayList<inteligencia>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM inteligencias ";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                inteli.add(new inteligencia(rs.getInt("id_inteligencias"),
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
        return inteli;
    }

    public ArrayList<inteligencia> consultaid(int idinteligencia){
        ArrayList<inteligencia> inteli = new ArrayList<inteligencia>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM inteligencias WHERE id_inteligencias = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idinteligencia);
            rs = pst.executeQuery();
            while (rs.next()){
                inteli.add(new inteligencia(rs.getInt("id_inteligencias"),
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
        return inteli;
    }

    public boolean actualizarinteligencia(inteligencia Inteli){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "UPDATE inteligencias SET tipo_de_inteligencia = ? WHERE id_inteligencias = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setString(1,Inteli.getTipo_de_inteligencia());
            pst.setInt(2, Inteli.getId_inteligencia());

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

    public boolean eliminarinteligencia(int id_intelige){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM inteligencias WHERE id_inteligencias = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, id_intelige);


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

    public ArrayList<inteligencia> obtenerinteligenciaFK(){
        ArrayList<inteligencia> intells = new ArrayList<inteligencia>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_inteligencias, tipo_de_inteligencia FROM inteligencias ";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()){
                intells.add(new inteligencia(
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
        return intells;
    }

}
