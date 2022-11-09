package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class PreparedStatements {
    public static void main(String[] args) {
        Config config = new Config();
        try{
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
            String insertSql = "INSERT INTO albums (artist, name, release_date, sales, genre VALUES(?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, "Lil Wayne");
            statement.setString(2, "The Carter III");
            statement.setInt(3, 2008);
            statement.setDouble(4, 3.97);
            statement.setString(5, "rap");
            statement.executeUpdate();
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            System.out.println(rs.getLong(1));
        } catch (SQLException e){
            throw new RuntimeException("Sorry, no connection to DB!");
        }
    }
}
