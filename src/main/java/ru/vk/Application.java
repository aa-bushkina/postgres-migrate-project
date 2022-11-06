package ru.vk;

import com.google.inject.Inject;
import org.jetbrains.annotations.NotNull;

import java.util.NoSuchElementException;
import java.util.Scanner;

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

  }
}
