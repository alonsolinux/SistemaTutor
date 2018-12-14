package include;

public class preguntas {

    private int id_pregunta;
    private int num_pregunta;
    private String pregunta;
    private int id_inteligencia;
    private String tipointeligencia;

    public preguntas(int id_pregunta, int num_pregunta, String pregunta, int id_inteligencia, String tipointeligencia) {
        this.id_pregunta = id_pregunta;
        this.num_pregunta = num_pregunta;
        this.pregunta = pregunta;
        this.id_inteligencia = id_inteligencia;
        this.tipointeligencia = tipointeligencia;
    }

    public preguntas(int id_pregunta, int num_pregunta, String pregunta, int id_inteligencia) {
        this.id_pregunta = id_pregunta;
        this.num_pregunta = num_pregunta;
        this.pregunta = pregunta;
        this.id_inteligencia = id_inteligencia;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
    }

    public int getNum_pregunta() {
        return num_pregunta;
    }

    public void setNum_pregunta(int num_pregunta) {
        this.num_pregunta = num_pregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getId_inteligencia() {
        return id_inteligencia;
    }

    public void setId_inteligencia(int id_inteligencia) {
        this.id_inteligencia = id_inteligencia;
    }

    public String getTipointeligencia() {
        return tipointeligencia;
    }

    public void setTipointeligencia(String tipointeligencia) {
        this.tipointeligencia = tipointeligencia;
    }
}
