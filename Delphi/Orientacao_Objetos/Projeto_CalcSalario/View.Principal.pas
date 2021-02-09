unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Classe.Pessoa, Classe.Vendedor,
  Classe.Administrativo;

type
  TEnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    lbFuncao: TLabel;
    cbFuncao: TComboBox;
    edtNome: TLabeledEdit;
    edtSalario: TLabeledEdit;
    edtBonus: TLabeledEdit;
    btnCadastrar: TButton;
    btnBack: TButton;
    btnFoward: TButton;
    mmCalculo: TMemo;
    btnCalculaSalario: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnFowardClick(Sender: TObject);
    procedure btnCalculaSalarioClick(Sender: TObject);
  private
    procedure fnc_IncluirAdministrativo;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    procedure fnc_ExibirDados(Pos : Integer);
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array [1 .. 100] of TPessoa;
    QtdFunc: Integer;
    RegAtual : Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBackClick(Sender: TObject);
begin
   if RegAtual <= 0 then
    exit;

   RegAtual := RegAtual - 1;
   fnc_ExibirDados(RegAtual);
end;

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  try

    case TEnumFuncao(cbFuncao.ItemIndex) of
    tpAdministrativo:
      begin
        fnc_IncluirAdministrativo;
      end;
    tpVendedor:
      begin
        fnc_IncluirVendedor;
      end;
    tpFuncionario:
      begin
        fnc_IncluirFuncionario;
      end;
    end;

    Inc(QtdFunc);
  except
    raise Exception.Create('Erro ao cadastrar funcionário');
  end;

end;

procedure TForm1.btnCalculaSalarioClick(Sender: TObject);
var
  Total : Currency;
  i : Integer;

begin
  Total := 0;

  for i := 0 to QtdFunc - 1 do
  begin
    mmCalculo.Lines.Add('Nome: ' + Funcionario[i].Nome);
    mmCalculo.Lines.Add('Salário: ' + CurrToStr(Funcionario[i].Salario));

    Total := Total + Funcionario[i].calcularSalario;
    mmCalculo.Lines.Add('');
  end;

  mmCalculo.Lines.Add('Sua folha salário é de: R$ ' + CurrToStr(Total));

end;

procedure TForm1.btnFowardClick(Sender: TObject);
begin
  if RegAtual >= QtdFunc then
    exit;

   RegAtual := RegAtual + 1;
   fnc_ExibirDados(RegAtual);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QtdFunc := 0;
  RegAtual := 0;
end;

procedure TForm1.fnc_ExibirDados(Pos: Integer);
begin
  edtNome.Text := Funcionario[RegAtual].Nome;
  edtSalario.Text := CurrToStr(Funcionario[RegAtual].Salario);

  if(Funcionario[RegAtual].ClassName = 'TAdministrativo') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TAdministrativo(Funcionario[RegAtual]).Bonus);
    cbFuncao.ItemIndex := Integer(tpAdministrativo);
  end;

  if(Funcionario[RegAtual].ClassName = 'TVendedor') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TVendedor(Funcionario[RegAtual]).Comissao);
    cbFuncao.ItemIndex := Integer(tpVendedor);
  end;

  if(Funcionario[RegAtual].ClassName = 'TFuncionario') then
  begin
    edtBonus.Enabled := false;
    edtBonus.Text := '';
    cbFuncao.ItemIndex := Integer(tpFuncionario);
  end;
end;

procedure TForm1.fnc_IncluirAdministrativo;
begin
  Funcionario[QtdFunc] := TAdministrativo.Create;
  TAdministrativo(Funcionario[QtdFunc]).Bonus := StrToCurr(edtBonus.Text);
  TAdministrativo(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[QtdFunc] := TVendedor.Create;
  TVendedor(Funcionario[QtdFunc]).Comissao := StrToCurr(edtBonus.Text);
  TVendedor(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[QtdFunc] := TPessoa.Create;
  Funcionario[QtdFunc].Nome := edtNome.Text;
  Funcionario[QtdFunc].Salario := StrToCurr(edtSalario.Text);
end;

end.
