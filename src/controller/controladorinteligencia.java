package controller;

import include.inteligencia;
import model.modelointeligencia;
import java.util.ArrayList;

public class controladorinteligencia {

    public boolean agregarinteligencia(inteligencia Inteli){
        modelointeligencia Inteligen = new modelointeligencia();
        return Inteligen.agregarinteligencia(Inteli);
    }

    public ArrayList<inteligencia> consultainteligencia(){
        modelointeligencia Inteligen = new modelointeligencia();
        return Inteligen.consultainteligencia();
    }


    public ArrayList<inteligencia> consultaid(int idinteligencia){
        modelointeligencia Inteligen = new modelointeligencia();
        return Inteligen.consultaid(idinteligencia);
    }

    public boolean actualizarinteligencia(inteligencia Inteli){
        modelointeligencia Inteligen = new modelointeligencia();
        return Inteligen.actualizarinteligencia(Inteli);
    }

    public boolean eliminarinteligencia(int id_intelige){
        modelointeligencia Inteligen = new modelointeligencia();
        return Inteligen.eliminarinteligencia(id_intelige);
    }

    public ArrayList<inteligencia> obtenerinteligenciaFK(){
        modelointeligencia intt = new modelointeligencia();
        return intt.obtenerinteligenciaFK();
    }


}
