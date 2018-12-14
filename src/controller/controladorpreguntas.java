package controller;

import include.preguntas;
import model.modelopregunta;
import java.util.ArrayList;

public class controladorpreguntas {

    public boolean agregarpregunta(preguntas preg){
        modelopregunta pg = new modelopregunta();
        return pg.agregarpregunta(preg);
    }

    public ArrayList<preguntas> consultarpreguntas(){
        modelopregunta pg = new modelopregunta();
        return pg.consultarpreguntas();
    }

    public ArrayList<preguntas> consultaanad(){
        modelopregunta pg = new modelopregunta();
        return pg.consultaanad();
    }

    public ArrayList<preguntas> consultapreguntasid(int id_pregunta_test){
        modelopregunta pg = new modelopregunta();
        return pg.consultapreguntasid(id_pregunta_test);
    }

    public ArrayList<preguntas> consultaiddoble(int id_pregunta_test){
        modelopregunta pg = new modelopregunta();
        return pg.consultapreguntasid(id_pregunta_test);
    }

    public boolean actualizarpreguntas(preguntas preng){
        modelopregunta pg = new modelopregunta();
        return pg.actualizarpreguntas(preng);
    }

    public boolean eliminarpreguntas(int eliminarpreguntas){
        modelopregunta pg = new modelopregunta();
        return pg.eliminarpreguntas(eliminarpreguntas);
    }

}
