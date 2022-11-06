package ru.vk;

import lombok.Value;
import org.jetbrains.annotations.NotNull;

@Value
public class DBProperties
{
  @NotNull
  String connection;
  @NotNull
  String name;
  @NotNull
  String username;
  @NotNull
  String password;


  public DBProperties(@NotNull String connection,
                      @NotNull String name,
                      @NotNull String username,
                      @NotNull String password)
  {
    this.connection = connection;
    this.name = name;
    this.username = username;
    this.password = password;
  }
}
