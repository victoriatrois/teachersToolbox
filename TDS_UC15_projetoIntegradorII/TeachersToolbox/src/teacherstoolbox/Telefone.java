/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package teacherstoolbox;

/**
 *
 * @author v3gc
 */
public class Telefone {
    private int numero;
    private String tipoContato;
    
    public Telefone() {
        
    }
    
    public Telefone(int numero, String tipoContato) {
        this.numero = numero;
        this.tipoContato = tipoContato;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }
    
    public int getNumero() {
        return this.numero;
    }
    
    public void setTipoContato(String tipoContato) {
        this.tipoContato = tipoContato;
    }
    
    public String getTipoContato() {
        return this.tipoContato;
    }
}
