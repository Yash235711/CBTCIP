import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;

import net.proteanit.sql.DbUtils;

import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.awt.event.ActionEvent;
import javax.swing.JTable;
import javax.swing.JScrollPane;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

public class productcrud {

	private JFrame frame;
	private JTextField tfpname;
	private JTextField tfpcomp;
	private JTextField tfpcount;
	private JTextField tfpprice;
	private JTextField tfpid;
	private JTable table;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					productcrud window = new productcrud();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public productcrud() {
		initialize();
		Connect();
		table_load();
	}
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs ;
	
	public void Connect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/productinv?user=root&password=root");
		} catch (Exception e) {
			System.out.println("Error in loading drivers");
		}
	}
	void table_load() {
		try {
			ps = con.prepareStatement("select * from pdetails");
			rs = ps.executeQuery();
			table.setModel(DbUtils.resultSetToTableModel(rs));
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 1062, 674);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Product Inventry System");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 28));
		lblNewLabel.setBounds(367, 45, 352, 47);
		frame.getContentPane().add(lblNewLabel);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(null," Product Registation" ,TitledBorder.LEADING,TitledBorder.TOP,null,null));
		panel.setBounds(47, 150, 452, 356);
		frame.getContentPane().add(panel);
		panel.setLayout(null);
		
		JLabel lblNewLabel_1 = new JLabel("Product Name");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel_1.setBounds(32, 33, 145, 25);
		panel.add(lblNewLabel_1);
		
		tfpname = new JTextField();
		tfpname.setBounds(223, 36, 192, 26);
		panel.add(tfpname);
		tfpname.setColumns(10);
		
		JLabel lblNewLabel_1_1 = new JLabel("Company");
		lblNewLabel_1_1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel_1_1.setBounds(32, 89, 145, 25);
		panel.add(lblNewLabel_1_1);
		
		tfpcomp = new JTextField();
		tfpcomp.setColumns(10);
		tfpcomp.setBounds(223, 92, 192, 26);
		panel.add(tfpcomp);
		
		JLabel lblNewLabel_1_1_1 = new JLabel("Product Count");
		lblNewLabel_1_1_1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel_1_1_1.setBounds(32, 148, 145, 25);
		panel.add(lblNewLabel_1_1_1);
		
		tfpcount = new JTextField();
		tfpcount.setColumns(10);
		tfpcount.setBounds(223, 147, 192, 26);
		panel.add(tfpcount);
		
		JLabel lblNewLabel_1_1_1_1 = new JLabel("Product Price");
		lblNewLabel_1_1_1_1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel_1_1_1_1.setBounds(32, 205, 145, 25);
		panel.add(lblNewLabel_1_1_1_1);
		
		tfpprice = new JTextField();
		tfpprice.setColumns(10);
		tfpprice.setBounds(223, 204, 192, 26);
		panel.add(tfpprice);
		
		JButton btnNewButton = new JButton("Save");
		btnNewButton.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String pname,pcompany,pcount,pprice;
		         
		         pname = tfpname.getText();
		         pcompany = tfpcomp.getText();
		         pcount = tfpcount.getText();
		         pprice = tfpprice.getText();
		         
		         try {
					
		        	 ps = con.prepareStatement("insert into pdetails(pname,pcompany,pcount,pprice)values(?,?,?,?)");
		        	 
		        	 ps.setString(1, pname);
		        	 ps.setString(2,pcompany);
		        	 ps.setString(3,pcount);
		        	 ps.setString(4, pprice);
		        	 ps.executeUpdate();
		        	 JOptionPane.showMessageDialog(null, "Record Added Successfully");
		        	 table_load();
		        	 tfpname.setText("");
		        	 tfpcomp.setText("");
		        	 tfpcount.setText("");
		        	 tfpprice.setText("");
		        	 tfpname.requestFocus();
		        	 
				} catch (Exception e2) {
					System.out.println("Error in SQL Query" + e2);
				}
				
			}
		});
		btnNewButton.setBounds(32, 264, 98, 72);
		panel.add(btnNewButton);
		
		JButton btnExit = new JButton("Exit");
		btnExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				System.exit(0);
			}
		});
		btnExit.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnExit.setBounds(180, 264, 98, 72);
		panel.add(btnExit);
		
		JButton btnNewButton_1_1 = new JButton("Clear");
		btnNewButton_1_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				tfpname.setText("");
	        	 tfpcomp.setText("");
	        	 tfpcount.setText("");
	        	 tfpprice.setText("");
	        	 tfpid.setText("");
				
			}
		});
		btnNewButton_1_1.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnNewButton_1_1.setBounds(322, 264, 98, 72);
		panel.add(btnNewButton_1_1);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBorder(new TitledBorder(null,"Search Product" ,TitledBorder.LEADING,TitledBorder.TOP,null,null));
		panel_1.setBounds(47, 533, 452, 78);
		frame.getContentPane().add(panel_1);
		panel_1.setLayout(null);
		
		JLabel lblNewLabel_1_2 = new JLabel("Product ID");
		lblNewLabel_1_2.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel_1_2.setBounds(21, 29, 145, 25);
		panel_1.add(lblNewLabel_1_2);
		
		tfpid = new JTextField();
		tfpid.addKeyListener(new KeyAdapter() {
			@Override
			public void keyReleased(KeyEvent e) {
				
                     try {
					
					String id = tfpid.getText();
					ps = con.prepareStatement("select pname,pcompany,pcount,pprice from pdetails where pid = ?");
					ps.setString(1, id);
					ResultSet rs = ps.executeQuery();
					
					if(rs.next()==true) {
						String name = rs.getString(1);
						String company = rs.getString(2);
						String pcount = rs.getString(3);
						String pprice = rs.getString(4);
						
						tfpname.setText(name);
						tfpcomp.setText(company);
						tfpcount.setText(pcount);
						tfpprice.setText(pprice);
						
					}else {
						tfpname.setText("");
			        	 tfpcomp.setText("");
			        	 tfpcount.setText("");
			        	 tfpprice.setText("");
						
					}
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		});
		tfpid.setColumns(10);
		tfpid.setBounds(212, 28, 192, 26);
		panel_1.add(tfpid);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(509, 150, 529, 356);
		frame.getContentPane().add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		JButton btnUpdate = new JButton("Update");
		btnUpdate.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String pname,pcompany,pcount,pprice,pid;
		         
		         pname = tfpname.getText();
		         pcompany = tfpcomp.getText();
		         pcount = tfpcount.getText();
		         pprice = tfpprice.getText();
		         pid = tfpid.getText();
		         
		         try {
					
		        	 ps = con.prepareStatement("update pdetails set pname=?,pcompany=?,pcount=?,pprice=? where pid=?");
		        	 
		        	 ps.setString(1, pname);
		        	 ps.setString(2,pcompany);
		        	 ps.setString(3,pcount);
		        	 ps.setString(4, pprice);
		        	 ps.setString(5, pid);
		        	 ps.executeUpdate();
		        	 JOptionPane.showMessageDialog(null, "Record Updated Successfully");
		        	 table_load();
		        	 tfpname.setText("");
		        	 tfpcomp.setText("");
		        	 tfpcount.setText("");
		        	 tfpprice.setText("");
		        	 tfpid.setText("");
		        	 tfpname.requestFocus();
		        	 
				} catch (Exception e2) {
					System.out.println("Error in SQL Query" + e2);
				}
			}
		});
		btnUpdate.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnUpdate.setBounds(594, 533, 141, 78);
		frame.getContentPane().add(btnUpdate);
		
		JButton btnNewButton_1_2 = new JButton("Delete");
		btnNewButton_1_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String pid;
		         
		        
		         pid = tfpid.getText();
		         
		         try {
					
		        	 ps = con.prepareStatement("delete from pdetails where pid =?");
		        	 
		        	
		        	 ps.setString(1, pid);
		        	 ps.executeUpdate();
		        	 JOptionPane.showMessageDialog(null, "Record Deleted Successfully");
		        	 table_load();
		        	 tfpname.setText("");
		        	 tfpcomp.setText("");
		        	 tfpcount.setText("");
		        	 tfpprice.setText("");
		        	 tfpid.setText("");
		        	 tfpname.requestFocus();
		        	 
				} catch (Exception e2) {
					System.out.println("Error in SQL Query" + e2);
				}
				
				
			}
		});
		btnNewButton_1_2.setFont(new Font("Tahoma", Font.PLAIN, 15));
		btnNewButton_1_2.setBounds(823, 533, 141, 78);
		frame.getContentPane().add(btnNewButton_1_2);
	}
}
