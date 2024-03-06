defmodule AirCanadaLimoWeb.BookingController do
  use AirCanadaLimoWeb, :controller

  def book_now(conn, params) do
    conn
    |> put_status(200)
    |> render(:success_response, %{message: "success", data: params})
  end
end
