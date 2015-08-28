defmodule PlanningPoker.CreateNewGameTest do
  use PlanningPoker.BrowserCase

  test "don't create game without session and user name" do
    visit "/"
    click_button "Start Session"
    assert Page.has_text? "Session Title Cant be blank"
    assert Page.has_text? "Your Nickname Cant be blank"
  end

  test "don't create game without session name" do
    visit "/"
    fill_in "game_name", "Game"
    click_button "Start Session"
    refute Page.has_text? "Session Title Cant be blank"
    assert Page.has_text? "Your Nickname Cant be blank"
  end

  test "don't create game without user name" do
    visit "/"
    fill_in "user_name", "User"
    click_button "Start Session"
    assert Page.has_text? "Session Title Cant be blank"
    refute Page.has_text? "Your Nickname Cant be blank"
  end

  test "create game with session and user name" do
    visit "/"
    fill_in "game_name", "Test Game"
    fill_in "user_name", "Test User"
    select "T-Shirts (S, M, L, XXL)", from: "game_deck"
    click_button "Start Session"
    refute Page.has_text? "Session Title Cant be blank"
    refute Page.has_text? "Your Nickname Cant be blank"
    assert Page.has_text? "Test Game"
    assert Page.has_text? "Test User"
  end
end

