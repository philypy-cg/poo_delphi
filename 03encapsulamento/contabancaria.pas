unit contabancaria;

interface
  Type
    TContaBancaria = Class
      private
        FNome: String;
      public
        prosperty Nome: String read FNome white FNome;
        prosperty Saldo: Double read GetSaldo;
        procedure: Depositar(Value: Double);
    End;

implementation

end.
