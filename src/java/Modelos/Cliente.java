package Modelos;

import Utils.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cliente {
    
    private String   cpf;
    private String   nome;
    private String   telefone;
    private String   email;
    private String   senha;
     
    public boolean incluirCliente() {
        // declarando comando de execucao do banco de dados
            String sql  = "INSERT INTO cliente ";
                   sql += "(cpf, nome, telefone, email, senha ) ";
                   sql += "VALUES(?,?,?,?,?)";
            // conectando no banco de dados
            Connection con = Conexao.conectar();

            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString(1, this.cpf);
                stm.setString(2, this.nome);
                stm.setString(3, this.telefone);
                stm.setString(4, this.email);
                stm.setString(5, this.senha);
                stm.execute();   
            } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage() + sql);
                return false;
            }            
            return true;  
            
            //TESTANDO INSERÇÃO
    }

    public boolean alterarCliente() {
        // declarando comando de execucao do banco de dados
            String sql  =   "UPDATE cliente ";
                   sql +=   "set nome  = ?, ";
                   sql +=   "telefone  = ?, ";
                   sql +=   "email     = ?  ";
                   sql +=   "senha     = ?  ";
                   sql +=   "where cpf = ?  ";
            // conectando no banco de dados
            Connection con = Conexao.conectar();
            // 
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                
                stm.setString(1, this.nome);
                stm.setString(2, this.telefone);
                stm.setString(3, this.email);
                stm.setString(4, this.cpf);
                stm.setString(5, this.senha);
                stm.execute();   
            } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
                return false; 
            }
            return true;	
	}

    public boolean excluirCliente() {
        String sql  = "DELETE cliente ";
               sql += "WHERE cpf = ? ";
        // conectando no banco de dados
        Connection con = Conexao.conectar();
        // 
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.cpf);
            stm.setString(2, this.nome);
            stm.setString(3, this.telefone);
            stm.setString(4, this.email);
            stm.setString(5, this.senha);
            stm.execute();   
        } catch (SQLException ex) {
            System.out.println("Erro:" + ex.getMessage());
            return false; 
        }
        return true;               
    }
    
    public Cliente consultarCliente(String pcpf) {
        Cliente cli = null;
        this.cpf = pcpf;
            String  sql  = "select cpf, nome, telefone, email, senha ";
                    sql += "from Cliente ";
                    sql += "where cpf = ?";
                    sql += "order by nome";
            Connection con = Conexao.conectar();
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString(1, this.cpf);
                ResultSet rs = stm.executeQuery();
                
                if(rs.next()){
                   cli = new Cliente();
                   cli.setCpf      (rs.getString("cpf"));
                   cli.setNome     (rs.getString("nome"));
                   cli.setTelefone (rs.getString("telefone"));
                   cli.setEmail    (rs.getString("email"));
                   cli.setEmail    (rs.getString("senha"));
                } 
                
                } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
            }
            return cli;
    }
    
    public List<Cliente> lovCliente() {
        List<Cliente> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String  sql  = "select cpf, nome, telefone, email, senha ";
                sql += "from Cliente ";
                sql += "order by nome";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
             while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setCpf      (rs.getString("cpf"));
                cli.setNome     (rs.getString("nome"));
                cli.setTelefone (rs.getString("telefone"));
                cli.setEmail    (rs.getString("email"));
                cli.setEmail    (rs.getString("senha"));
                lista.add(cli);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
    }
    
    public List<Cliente> consultarListaGeralCliente(){
        List<Cliente> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String sql = "select * from cliente order by nome";
        try {
            PreparedStatement stm = con.prepareStatement(sql);     
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
               Cliente  cli = new Cliente();
               cli.setCpf      (rs.getString("cpf"));
               cli.setNome     (rs.getString("nome"));
               cli.setTelefone (rs.getString("telefone"));
               cli.setEmail    (rs.getString("email"));
               cli.setEmail    (rs.getString("senha"));
               lista.add(cli);
           } 
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    
    public boolean autenticarCliente(String pEmail, String pSenha) {
        this.email = pEmail;
        this.senha = pSenha;
            String  sql  = "select 1 ";
                    sql += "from cliente ";
                    sql += "where email = ? ";
                    sql += "  and senha = ? ;";
            Connection con = Conexao.conectar();
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString(1, this.email);
                stm.setString(2, this.senha);
                ResultSet rs = stm.executeQuery();
                if(rs.next()){
                    return true;
                } 
                
                } catch (SQLException ex) {
                    System.out.println("Erro:" + ex.getMessage());
            }
            return false;
    }
    
    //INCLUINDO GETTERS E SETTERS

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    

}
