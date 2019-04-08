function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 13-Mar-2019 16:18:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
e = bin2dec(textString);   
set(handles.edit2,'String',e);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'sin(');
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'dec2bin(');
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'cos(');
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
if((strcmp(textString,'1.57')==1)||(strcmp(textString,'-1.57')==1))
   set(handles.edit2,'String','inf');
else
textString = strcat(textString,'tan(');
set(handles.edit2,'String',textString)
end


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'pi');
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
if(strcmp(textString,'0')==1)
   set(handles.edit2,'String','error') ;
else
a = strread(textString, '%f');
a=log10(a);
set(handles.edit2,'String',a)
end


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)%清除
set(handles.edit2,'String','')


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,' (');
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,')');
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
close(gcf);


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'asin(');
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'acos(');
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
textString = strcat(textString,'atan(');
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
textString = get(handles.edit2,'String');
if(strcmp(textString,'0')==1)
   set(handles.edit2,'String','0') ;
else
a = strread(textString, '%f');
a=sqrt(a);
set(handles.edit2,'String',a)
end
% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
s=eval(textString)
set(handles.edit2,'String',s)


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'7')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'4')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'1')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)%返回上一步back
textString=get(handles.edit2,'String')
w=length(textString)
t=char(textString)
textString=t(1:w-1)
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'8')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'5')
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'2')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'0')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'9')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'6')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'3')
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'.')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'^2')
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'/')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'*')
set(handles.edit2,'String',textString)


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'-')
set(handles.edit2,'String',textString)

% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
textString=get(handles.edit2,'String')
textString=strcat(textString,'+')
set(handles.edit2,'String',textString)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
ha=axes('units','normalized','pos',[0 0 1 1]);
uistack(ha,'down');
ii=imread('background.jpg');
image(ii);
colormap gray
set(ha,'handlevisibility','off','visible','on');



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
