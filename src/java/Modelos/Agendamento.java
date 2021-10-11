package Modelos;
 
import Utils.Conexao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Agendamento extends Cliente {
    
    private int      nrAgendamento;
    private String   cpfCliente;
    private Date     dataagenda;
    private String   horaagenda;
    private String   statusAgenda;
    private int      codtipoCorte;
  
    public boolean incluirAgendamento() {
        String sql=  "insert into agendamento";
               sql+= "(cpfCliente, dataagenda, horaagenda,codtipoCorte,statusAgenda) ";
               sql+= "values(?,?,?,?,?)";
        Connection  con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString  (1, this.cpfCliente);
            stm.setDate    (2, this.dataagenda);
            stm.setString  (3, this.horaagenda);
            stm.setInt     (4, this.codtipoCorte);
            stm.setString  (5,this.statusAgenda);
            stm.execute();     
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;	
    }

    public boolean alterarAgendamento() {
        // declarando comando de execucao do banco de dados
            String sql  = "update agendamento      ";
                   sql += "set cpfcliente   = ?,   ";
                   sql += "    dataagenda   = ?,   ";
                   sql += "    horaagenda   = ?,   ";
                   sql += "    codtipocorte = ?,   ";
                   sql += "    statusagenda = ?    ";
                   sql += "where nragendamento = ?; ";
            // conectando no banco de dados
            Connection con = Conexao.conectar();
            try {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setString  (1, this.cpfCliente);
                stm.setDate    (2, this.dataagenda);
                stm.setString  (3, this.horaagenda);
                stm.setInt     (4, this.codtipoCorte);
                stm.setString  (5,this.statusAgenda);
                stm.setInt     (6,this.nrAgendamento);
                stm.execute(); 
            } catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
              return false; 
            }
        return true;	
    }

    public boolean excluirAgendamento() {
        String sql  = "delete from agendamento ";
               sql += "where nrAgendamento = ? ";
        // conectando no banco de dados
        Connection con = Conexao.conectar();
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt (1, this.nrAgendamento);
            stm.execute();   
        } catch (SQLException ex) {
            System.out.println("Erro:" + ex.getMessage());
            return false; 
        }
        return true;               
    }

    public Agendamento consultarAgendamento(int pnrAgendamento) {
        
        Agendamento ag = null;
        String  sql  = "select nragendamento, cpfcliente, dataagenda, ";
                sql += "horaagenda, codtipocorte, statusagenda ";
                sql += "from agendamento ";
                sql += "where nragendamento = ?";
        Connection con = Conexao.conectar();

        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, pnrAgendamento);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
               ag = new Agendamento();
               ag.setNrAgendamento(rs.getInt("nragendamento"));
               ag.setCpfCliente(rs.getString("cpfcliente"));
               ag.setDataagenda(rs.getDate("dataagenda"));
               ag.setHoraagenda(rs.getString("horaagenda"));
               ag.setCodtipoCorte(rs.getInt("codtipocorte"));
               ag.setStatusAgenda(rs.getString("statusagenda"));
            } 
        }   catch (SQLException ex) {
                System.out.println("Erro:" + ex.getMessage());
        }
        return ag;
    }
    
    public List<Agendamento> lovAgendamento() {
        List<Agendamento> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String  sql  = "select nragendamento, cpfcliente ";
                sql += "from agendamento ";
                sql += "order by cpfcliente";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
             while (rs.next()) {
                Agendamento Agendamento = new Agendamento();
                Agendamento.setNrAgendamento(rs.getInt("nragendamento"));
                Agendamento.setCpfCliente(rs.getString("cpfcliente"));
                lista.add(Agendamento);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
    }
    
    public List<Agendamento> ConsultarListaAgendamento() {
        List<Agendamento> lista = new ArrayList<>();
        Connection con = Conexao.conectar();
        String  sql  = "select nragendamento, cpfcliente, dataagenda, ";
                sql += "horaagenda, codtipocorte, statusagenda ";
                sql += "from agendamento ";
                sql += "order by nragendamento";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
             while (rs.next()) {
                Agendamento ag = new Agendamento();
                ag.setNrAgendamento(rs.getInt("nragendamento"));
                ag.setCpfCliente(rs.getString("cpfcliente"));
                ag.setDataagenda(rs.getDate("dataagenda"));
                ag.setHoraagenda(rs.getString("horaagenda"));
                ag.setCodtipoCorte(rs.getInt("codtipocorte"));
                ag.setStatusAgenda(rs.getString("statusagenda"));
                lista.add(ag);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
    }
    
    //INCLUINDO GETTERS E SETTERS

    public int getNrAgendamento() {
        return nrAgendamento;
    }

    public void setNrAgendamento(int nrAgendamento) {
        this.nrAgendamento = nrAgendamento;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }

    public Date getDataagenda() {
        return dataagenda;
    }

    public void setDataagenda(Date dataagenda) {
        this.dataagenda = dataagenda;
    }

    public String getHoraagenda() {
        return horaagenda;
    }

    public void setHoraagenda(String horaagenda) {
        this.horaagenda = horaagenda;
    }

    public String getStatusAgenda() {
        return statusAgenda;
    }

    public void setStatusAgenda(String statusAgenda) {
        this.statusAgenda = statusAgenda;
    }

    public int getCodtipoCorte() {
        return codtipoCorte;
    }

    public void setCodtipoCorte(int codtipoCorte) {
        this.codtipoCorte = codtipoCorte;
    }
   
}

