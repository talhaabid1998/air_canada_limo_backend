defmodule AirCanadaLimoWeb.BookingJSON do
  @moduledoc false

  def response(msg \\ "", data \\ %{}) do
    %{message: msg, data: data}
  end

  def error_response(%{message: msg, data: data}) do
    %{message: msg, data: data}
  end

  def success_response(%{message: msg, data: data}) do
    %{message: msg, data: data}
  end
end
