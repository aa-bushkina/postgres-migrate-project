package ru.vk;

import com.google.inject.Inject;
import org.flywaydb.core.Flyway;
import org.jetbrains.annotations.NotNull;

public class Application
{
  @NotNull
  final private DBProperties DBProperties;

  @Inject
  public Application(@NotNull final DBProperties DBProperties)
  {
    this.DBProperties = DBProperties;
  }

  public void makeDB()
  {
    final Flyway flyway = Flyway
      .configure()
      .dataSource(DBProperties.getConnection() + DBProperties.getName(), DBProperties.getUsername(), DBProperties.getPassword())
      .locations("db")
      .load();
    flyway.clean();
    flyway.migrate();
    System.out.println("Migrations applied successfully");
  }
}
