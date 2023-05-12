package kz.bitlab.javaee.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
    private static Connection connection;

    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:8889/mysql.db",
                    "root",
                    "root");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Items> getItems(){

        ArrayList<Items> item = new ArrayList<>();
        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                Items items = new Items();
                items.setId(resultSet.getLong("id"));
                items.setName(resultSet.getString("name"));
                items.setPrice(resultSet.getDouble("price"));
                items.setDescription(resultSet.getString("description"));

                item.add(items);
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return item;
    }

    public static Users getUser(String email){
        Users users = null;
        try {
            PreparedStatement statement = connection.prepareStatement(" "+ "SELECT * FROM users WHERE email = ?");
            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                users = new Users();
                users.setId(resultSet.getLong("id"));
                users.setEmail(resultSet.getString("email"));
                users.setPassword(resultSet.getString("password"));
                users.setFullName(resultSet.getString("full_Name"));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
}
