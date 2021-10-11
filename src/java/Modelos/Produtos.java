package Modelos;

import Utils.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Produtos extends UnidMed {
    
    public String   codProduto;
    public String   descProduto;
    public String   descUnidMed;
    public double   vlrUnitario;
    
    public boolean incluirProduto () {
	 String sql = "insert into produtos ";
                sql+= "(codproduto, descProduto, descUnidMed, vlrUnitario) ";
                sql+= "values(?,?,?,?)";
        Connection  con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString (1, this.codProduto);
            stm.setString (2, this.descProduto);
            stm.setString (3, this.descUnidMed);
            stm.setDouble (4, this.vlrUnitario);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;	
    }
       
    public Produtos consultarProduto (String pcodProduto){
 // declarando comando de execucao do banco de dados
        Produtos p = null;
        this.codProduto = pcodProduto;
            String sql = "select produtos ";
                  sql += "(codProduto, descProduto, descUnidMed, vlrUnitario) ";
                  sql += " where codProduto = ?";
            // conectando no banco de dados
            Connection con = Conexao.conectar();
    
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                
                if(rs.next()){
                   p = new Produtos();
                   p.setCodProduto  (rs.getString("codproduto"));
                   p.setDescProduto (rs.getString("descproduto"));
                   p.setDescUnidMed (rs.getString("descunidmed"));
                   p.setVlrUnitario (Double.parseDouble(rs.getString("vlrunitario")));
                } 
                
                } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
            }
            return p;
    }   
    
       public boolean alterarProduto () {
	// declarando comando de execucao do banco de dados
            String sql  = "UPDATE produtos ";
                   sql += "set (codproduto, descProduto, descUnidMed, vlrUnitario ) = ?,?,?,? ";
                   sql += "where codproduto = ? ";
            // conectando no banco de dados
            Connection con = Conexao.conectar();
            // 
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString (1, this.codProduto);
                stm.setString (2, this.descProduto);
                stm.setString (3, this.descUnidMed);
                stm.setDouble (4, this.vlrUnitario);
                stm.execute();   
            } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
                return false; 
            }
            return true;	
	}
       
        public boolean excluirProduto() {
	String sql  = "DELETE FROM produtos WHERE codproduto = ? ";
        // conectando no banco de dados
        Connection con = Conexao.conectar();
        // 
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString (1, this.codProduto);
            stm.execute();   
        } catch (SQLException ex) {
            System.out.println("Erro:" + ex.getMessage());
            return false; 
        }
        return true;               
    }
        
    public List<Produtos> consultarlistaproduto(){
      List<Produtos> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String sql = "select * from Produtos order by descProduto";
        try {
            PreparedStatement stm = con.prepareStatement(sql);     
            java.sql.ResultSet rs = stm.executeQuery();
            while(rs.next()){
               Produtos p = new Produtos();
               p.setCodProduto (rs.getString      ("codProduto"));
               p.setDescProduto(rs.getString      ("descProduto"));
               p.setDescUnidMed(rs.getString      ("descUnidMed"));
               p.setVlrUnitario((int) rs.getDouble("vlrUnitario"));     
               lista.add(p);
           } 
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    
    public String getCodProduto() {
        return codProduto;
    }

    public void setCodProduto(String codProduto) {
        this.codProduto = codProduto;
    }

    public String getDescProduto() {
        return descProduto;
    }

    public void setDescProduto(String descProduto) {
        this.descProduto = descProduto;
    }

    public double getVlrUnitario() {
        return vlrUnitario;
    }

    public void setVlrUnitario(double vlrUnitario) {
        this.vlrUnitario = vlrUnitario;
    }
    
}
