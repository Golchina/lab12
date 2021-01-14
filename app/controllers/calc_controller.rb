class CalcController < ApplicationController
  require 'prime'
  def input; end
  def view
  v1 = test_view
  if v1.scan(/\D/).empty? && (v1 != '')
  n = v1.to_i
  i = 0
  j = 0
  mas=[]
  count_pred = 2**i - 1
  while count_pred<= n do
  if ( Prime.prime?(i.to_i) && Prime.prime?(count_pred.to_i) )
  mas[j]=count_pred
  j+=1
  end
  i+=1
  count_pred = 2**i - 1
  
  end
  
  @result = mas
  @result1 = j
  else
  @result = 'Вы ввели не число!'
  end
  end
  private
  
  def test_view
  params.fetch(:v1) {''}
  end
  end
