package Modelos;

import Utils.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TipoPagamento {

    public int codTipoPagto;
    public String descTipoPagto;
    
    public boolean incluirTipoPagto() {
        // declarando comando de execucao do banco de dados
            String sql  = "INSERT INTO TipoPagamento ";
                   sql += "(descTipoPagto) ";
                   sql += "VALUES(?)";
            // conectando no banco de dados
            Connection con = Conexao.conectar();
            // 
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString (1, this.descTipoPagto);
                stm.execute();   
            } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
                return false;
            }            
            return true;
    }

    public boolean alterarTipoPagto() {
        Connection con = Conexao.conectar();
        String  sql  = "update TipoPagamento set ";
                sql += " set descTipoPagto   = ?, ";
                sql += " where codtipopagto = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString (1, this.descTipoPagto);
            stm.setInt (2, this.codTipoPagto);
            stm.execute();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return true;
    }
    
    public boolean excluirTipoPagto() {
        Connection con = Conexao.conectar();
        String  sql  = "delete from tipopagamento where codtipopagto = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt (1, this.codTipoPagto);
            stm.execute();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return true;
    }
    
    public List<TipoPagamento> lovTipoPagamento() {
        List<TipoPagamento> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String  sql  = "select codTipoPagto, DescTipoPagamento ";
                sql += "from TipoPagamento ";
                sql += "order by codTipoPagto";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
             while (rs.next()) {
                TipoPagamento TipoPagamento = new TipoPagamento();
                TipoPagamento.setCodTipoPagto (rs.getInt("codTipoPagto"));
                TipoPagamento.setDescTipoPagto(rs.getString("TipoPagamento"));
                lista.add(TipoPagamento);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
    }
    
    public List<TipoPagamento> consultarListaGeralTipoPagamento(){
        List<TipoPagamento> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String sql = "select codTipoPagto, descTipoPagto ";
               sql +="from tipoPagamento order by codTipoPagto";
        try {
            PreparedStatement stm = con.prepareStatement(sql);     
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
               TipoPagamento tip = new TipoPagamento();
               tip.setCodTipoPagto      (rs.getInt("codTipoPagto"));
               tip.setDescTipoPagto     (rs.getString("descTipoPagto"));
               lista.add(tip);
           } 
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    
    public int getCodTipoPagto() {
        return codTipoPagto;
    }

    public void setCodTipoPagto(int codTipoPagto) {
        this.codTipoPagto = codTipoPagto;
    }

    public String getDescTipoPagto() {
        return descTipoPagto;
    }

    public void setDescTipoPagto(String descTipoPagto) {
        this.descTipoPagto = descTipoPagto;
    }
    
}
