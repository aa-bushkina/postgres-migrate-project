package ru.vk;

import lombok.Value;
import org.jetbrains.annotations.NotNull;

@Value
public class DBProperties
{
  @NotNull
  String connection;
  @NotNull
  String login;
  @NotNull
  String password;

  public DBProperties(@NotNull String connection, @NotNull String login, @NotNull String password)
  {
    this.connection = connection;
    this.login = login;
    this.password = password;
  }
}
