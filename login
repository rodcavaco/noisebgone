import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Login extends JFrame implements ActionListener {
    
    private JTextField tfUsuario;
    private JPasswordField pfSenha;
    private JButton btLogin;
    
    public Login() {
        // Configurar a janela
        setTitle("Login");
        setSize(300, 150);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        // Criar os componentes da tela
        JLabel lbUsuario = new JLabel("Usuário:");
        JLabel lbSenha = new JLabel("Senha:");
        tfUsuario = new JTextField(10);
        pfSenha = new JPasswordField(10);
        btLogin = new JButton("Login");
        btLogin.addActionListener(this);
        
        // Adicionar os componentes à tela
        JPanel panel = new JPanel(new GridLayout(3, 2));
        panel.add(lbUsuario);
        panel.add(tfUsuario);
        panel.add(lbSenha);
        panel.add(pfSenha);
        panel.add(new JLabel());
        panel.add(btLogin);
        add(panel);
        
        // Exibir a janela
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent e) {
        // Verificar se o login é válido
        String usuario = tfUsuario.getText();
        String senha = new String(pfSenha.getPassword());
        if (usuario.equals("admin") && senha.equals("admin")) {
            JOptionPane.showMessageDialog(this, "Login realizado com sucesso!");
        } else {
            JOptionPane.showMessageDialog(this, "Usuário ou senha incorretos.", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }
}
