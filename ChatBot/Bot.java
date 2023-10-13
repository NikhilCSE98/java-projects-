package basics;
import java.awt.*;//Color, Desktop, FlowLayout
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import javax.swing.*;// JFram, JScrollPane, JTextArea, JtextField
public class Bot extends JFrame {
    public JTextArea chatArea = new JTextArea();
    private JTextField chatBox = new JTextField();
     
    public Bot() {
        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
        frame.setVisible(true);
        frame.getContentPane().setBackground(Color.black);
        frame.setResizable(false);
        frame.setLayout(new FlowLayout());
        frame.setSize(500, 500);
        JScrollPane sp = new JScrollPane(chatArea, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
                JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        sp.setCursor(getCursor());
        frame.add(sp);
        frame.setTitle("ChatBot");
        frame.add(chatBox);
        sp.setSize(440, 320);
        sp.setLocation(20,20);
        chatBox.setSize(440, 30);
        chatBox.setLocation(20, 410);
        chatArea.setBackground(Color.LIGHT_GRAY);
        chatBox.setBackground(Color.LIGHT_GRAY);
        chatArea.setForeground(Color.black); 
        chatBox.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String gtext = chatBox.getText().toLowerCase();
                chatArea.append("YOU: " + gtext + "\n");
                chatBox.setText("");
                if (gtext.contains("hi") || gtext.contains("hello")) {
                    bot("hi");
                } else if (gtext.contains("how are you")) {
                    bot("I am fine, thank you for asking me");
                } else if (gtext.contains("who are you")) {
                    bot("I am a chatbot created by Nikhil Verma");
                } else if (gtext.contains("tell me about myself") || gtext.contains("who am i")) {
                    bot("Your name is Nikhil Verma, and you are pursuing B.Tech CSE from TIT&S Bhiwani.");
                } else if (gtext.contains("open notepad")) {
                    try {
                        Runtime.getRuntime().exec("notepad.exe");
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
                else if (gtext.contains("open vs code")) {
                    try {
                        Runtime.getRuntime().exec("\"C:\\Users\\NikhilVerma\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe\"");
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
                else if (gtext.contains("exit")) {
                    System.exit(0);
                }
                else if (gtext.contains("open google")) {
                    // Open Google in the default web browser
                    try {
                        Desktop.getDesktop().browse(new URI("https://www.google.com"));
                    } catch (IOException | URISyntaxException ex) {
                        ex.printStackTrace();
                    }
                }
                else {
                    int rm = (int) (Math.random() * 3 + 1);
                    if (rm == 1) {
                        bot("I don't understand you");
                    } else if (rm == 2) {
                        bot("Please come again");
                    } else if(rm==3){
                        bot("Please enter correct input");
                    }
                }
            }
        });
    }
    private void bot(String str) {
        chatArea.append("BOT: " + str + "\n");
    }

    public static void main(String[] args) {
        new Bot();
    }
}
