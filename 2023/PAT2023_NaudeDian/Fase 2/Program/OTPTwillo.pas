unit OTPTwillo;
/// Code Addapted and changed from
///  https://www.twilio.com/docs/sms/tutorials/how-to-send-sms-messages-delphi
interface

uses
  System.Classes,
  System.JSON,
  System.StrUtils,
  System.SysUtils,
  System.Net.HttpClient,
  System.Net.HttpClientComponent,
  System.Net.URLClient;
   //Various Uses from system library
type
//New data structure created
  TTwilioClientResponse = record
    Success: boolean;
    ResponseData: TJSONValue;
    HTTPResponse: IHTTPResponse;
    //To connect to Twillo Account
  end;

  TTwilioClient = Class
  private
    FUserName: string;
    FPassword: string;
    FAccountSid: string;
    FHttpClient: TNetHttpClient;
    FRequest: TNetHTTPRequest;

  protected
    procedure AuthEventHandler(const Sender: TObject;
      AnAuthTarget: TAuthTargetType; const ARealm, AURL: string;
      var AUserName, APassword: string; var AbortAuth: Boolean;
      var Persistence: TAuthPersistenceType); virtual;

  public
    constructor Create(UserName: string; Password: string;
      AccountSid: string = ''); virtual;

    destructor Destroy; override;

    function Post(resource: string; params: TStrings; domain: string = 'api';
      version: string = '2010-04-01'; prefix: string = '/Accounts/{sid}')
      : TTwilioClientResponse;

end;

implementation

constructor TTwilioClient.Create(UserName: string; Password: string;
  AccountSid: string = '');
begin
//Creates object and instantiate values
  FUserName := UserName;
  FPassword := Password;
  ///Username is FAccountsID which is my login details for my account
  if AccountSid = '' then
    FAccountSid := UserName
  else
    FAccountSid := AccountSid;
   ///Create HTTp connection
  FHttpClient := TNetHttpClient.Create(nil);
  FHttpClient.OnAuthEvent := AuthEventHandler;
  ///create request line
  FRequest := TNetHTTPRequest.Create(nil);
  FRequest.Client := FHttpClient;
end;

destructor TTwilioClient.Destroy;
begin
  inherited;
  FRequest.Free;
  FHttpClient.Free;
  //Closes TTwilloClient
end;

function TTwilioClient.Post(resource: string; params: TStrings;
  domain: string = 'api'; version: string = '2010-04-01';
  prefix: string = '/Accounts/{sid}'): TTwilioClientResponse;
var
  url: String;
  response: TTwilioClientResponse;
begin
///Connects to twillo
///Https to connect to twillo APi
///  params contains the message
  url := 'https://' + domain + '.twilio.com/' + version + prefix + '/' +
    resource + '.json';
  if ContainsText(url, '{sid}') then
    url := ReplaceText(url, '{sid}', FAccountSid);
    ///Hear the message is added and conected to the HTTPRespnse
  response.HTTPResponse := FRequest.Post(url, params);
  response.ResponseData := TJSONObject.ParseJSONValue(
    response.HTTPResponse.ContentAsString(TEncoding.UTF8));

  response.Success := (response.HTTPResponse.StatusCode >= 200) and
    (response.HTTPResponse.StatusCode <= 299) and
    (response.ResponseData <> nil);
 //Response is type TwilioClientResponse
  Result := response;
end;

procedure TTwilioClient.AuthEventHandler(const Sender: TObject;
  AnAuthTarget: TAuthTargetType; const ARealm, AURL: string;
  var AUserName, APassword: string; var AbortAuth: Boolean;
  var Persistence: TAuthPersistenceType);
begin
  if AnAuthTarget = TAuthTargetType.Server then
  begin
  //Connects to server with my password and login details
    AUserName := FUserName;
    APassword := FPassword;
  end;
end;

end.

