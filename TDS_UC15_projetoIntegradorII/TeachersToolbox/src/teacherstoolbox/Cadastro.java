/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package teacherstoolbox;

/**
 *
 * @author v3gc
 */
public class Cadastro {
    private String usuarioNome;
    private String usuarioUltimoNome;
    private String dataNascimento;
    private String cpf;
    private String email;
    
    public Cadastro() {
        
    }
    
    public Cadastro(String usuarioNome, String usuarioUltimoNome, String dataNascimento, String cpf, String email) {
        
    }
    
    public void setUsuarioNome(String usuarioNome) {
        this.usuarioNome = usuarioNome;
    }
    
    public String getUsuarioNome() {
        return this.usuarioNome;
    }

    public String getUsuarioUltimoNome() {
        return usuarioUltimoNome;
    }

    public void setUsuarioUltimoNome(String usuarioUltimoNome) {
        this.usuarioUltimoNome = usuarioUltimoNome;
    }
    
    
}
