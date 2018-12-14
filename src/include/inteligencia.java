package include;

public class inteligencia {

    private int id_inteligencia;
    private String tipo_de_inteligencia;


    public inteligencia(int id_inteligencia, String tipo_de_inteligencia) {
        this.id_inteligencia = id_inteligencia;
        this.tipo_de_inteligencia = tipo_de_inteligencia;
    }

    public int getId_inteligencia() {
        return id_inteligencia;
    }

    public void setId_inteligencia(int id_inteligencia) {
        this.id_inteligencia = id_inteligencia;
    }

    public String getTipo_de_inteligencia() {
        return tipo_de_inteligencia;
    }

    public void setTipo_de_inteligencia(String tipo_de_inteligencia) {
        this.tipo_de_inteligencia = tipo_de_inteligencia;
    }
}
