function varargout = p11(varargin)
% P11 MATLAB code for p11.fig
%      P11, by itself, creates a new P11 or raises the existing
%      singleton*.
%
%      H = P11 returns the handle to a new P11 or the handle to
%      the existing singleton*.
%
%      P11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in P11.M with the given input arguments.
%
%      P11('Property','Value',...) creates a new P11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before p11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to p11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help p11

% Last Modified by GUIDE v2.5 22-Jan-2017 17:29:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @p11_OpeningFcn, ...
                   'gui_OutputFcn',  @p11_OutputFcn, ...
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


% --- Executes just before p11 is made visible.
function p11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to p11 (see VARARGIN)

% Choose default command line output for p11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global game 

game =0;




% UIWAIT makes p11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = p11_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in rs.
function rs_Callback(hObject, eventdata, handles)
% hObject    handle to rs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.p1,'string','')
set(handles.p2,'string','')
set(handles.p3,'string','')
set(handles.p4,'string','')
set(handles.p5,'string','')
set(handles.p6,'string','')
set(handles.p7,'string','')
set(handles.p8,'string','')
set(handles.p9,'string','')

% --- Executes on button press in o.
function o_Callback(hObject, eventdata, handles)
% hObject    handle to o (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game
game =1
set(handles.o,'visible','off')
set(handles.x,'visible','off')
set(handles.text1,'visible','off')
set(handles.p1,'string','')
set(handles.p1,'string','')
set(handles.p2,'string','')
set(handles.p3,'string','')
set(handles.p4,'string','')
set(handles.p5,'string','')
set(handles.p6,'string','')
set(handles.p7,'string','')
set(handles.p8,'string','')
set(handles.p9,'string','')

% --- Executes on button press in x.
function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game
game =2
set(handles.o,'visible','off')
set(handles.x,'visible','off')
set(handles.text1,'visible','off')
set(handles.p1,'string','')
set(handles.p1,'string','')
set(handles.p2,'string','')
set(handles.p3,'string','')
set(handles.p4,'string','')
set(handles.p5,'string','')
set(handles.p6,'string','')
set(handles.p7,'string','')
set(handles.p8,'string','')
set(handles.p9,'string','')

% --- Executes on button press in p11.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p1,'string'))
if game ==1
    set(handles.p1,'string','O')
        if (strcmp(get(handles.p1,'string'),get(handles.p2,'string')) && strcmp(get(handles.p1,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p1,'string'),get(handles.p4,'string')) && strcmp(get(handles.p1,'string'),get(handles.p7,'string')))||... 
           (strcmp(get(handles.p1,'string'),get(handles.p5,'string')) && strcmp(get(handles.p1,'string'),get(handles.p9,'string')))
            msgbox('player O won')
        end
    end
         
    if game==2
        set(handles.p1,'string','X')
        if (strcmp(get(handles.p1,'string'),get(handles.p2,'string')) && strcmp(get(handles.p1,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p1,'string'),get(handles.p4,'string')) && strcmp(get(handles.p1,'string'),get(handles.p7,'string')))||... 
           (strcmp(get(handles.p1,'string'),get(handles.p5,'string')) && strcmp(get(handles.p1,'string'),get(handles.p9,'string')))
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end
     
end
    

% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p2,'string'))
    if game==1
        set(handles.p2,'string','O')
        if (strcmp(get(handles.p2,'string'),get(handles.p1,'string')) && strcmp(get(handles.p2,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p2,'string'),get(handles.p5,'string')) && strcmp(get(handles.p2,'string'),get(handles.p8,'string')))
    
            msgbox('player O won')
        end        
    end
    
    if game==2
        set(handles.p2,'string','X')
        if (strcmp(get(handles.p2,'string'),get(handles.p1,'string')) && strcmp(get(handles.p2,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p2,'string'),get(handles.p5,'string')) && strcmp(get(handles.p2,'string'),get(handles.p8,'string')))
         
            msgbox('player X won')
            game=1;
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end
end

% --- Executes on button press in p3.
function p3_Callback(hObject, eventdata, handles)
% hObject    handle to p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p3,'string'))
    if game==1
        set(handles.p3,'string','O')
        if (strcmp(get(handles.p3,'string'),get(handles.p2,'string')) && strcmp(get(handles.p3,'string'),get(handles.p1,'string')))||...
           (strcmp(get(handles.p3,'string'),get(handles.p6,'string')) && strcmp(get(handles.p3,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p3,'string'),get(handles.p5,'string')) && strcmp(get(handles.p3,'string'),get(handles.p7,'string')))
        
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p3,'string','X')
        if (strcmp(get(handles.p3,'string'),get(handles.p2,'string')) && strcmp(get(handles.p3,'string'),get(handles.p1,'string')))||...
           (strcmp(get(handles.p3,'string'),get(handles.p6,'string')) && strcmp(get(handles.p3,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p3,'string'),get(handles.p5,'string')) && strcmp(get(handles.p3,'string'),get(handles.p7,'string')))
           
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end
end

% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p4,'string'))
    if game==1
        set(handles.p4,'string','O')
        if (strcmp(get(handles.p4,'string'),get(handles.p1,'string')) && strcmp(get(handles.p4,'string'),get(handles.p7,'string')))||...
           (strcmp(get(handles.p4,'string'),get(handles.p5,'string')) && strcmp(get(handles.p4,'string'),get(handles.p6,'string')))
           
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p4,'string','X')
        if (strcmp(get(handles.p4,'string'),get(handles.p1,'string')) && strcmp(get(handles.p4,'string'),get(handles.p7,'string')))||...
           (strcmp(get(handles.p4,'string'),get(handles.p5,'string')) && strcmp(get(handles.p4,'string'),get(handles.p6,'string')))
         
            msgbox('player X won')
        end
    end
    
    if game==1
        game =2;
    elseif game==2
        game=1;
    end
    
end

% --- Executes on button press in p6.
function p6_Callback(hObject, eventdata, handles)
% hObject    handle to p6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p6,'string'))
    if game==1
        set(handles.p6,'string','O')
        if (strcmp(get(handles.p6,'string'),get(handles.p5,'string')) && strcmp(get(handles.p6,'string'),get(handles.p4,'string')))||...
           (strcmp(get(handles.p6,'string'),get(handles.p3,'string')) && strcmp(get(handles.p6,'string'),get(handles.p9,'string')))
         
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p6,'string','X')
        if (strcmp(get(handles.p6,'string'),get(handles.p5,'string')) && strcmp(get(handles.p6,'string'),get(handles.p4,'string')))||...
           (strcmp(get(handles.p6,'string'),get(handles.p3,'string')) && strcmp(get(handles.p6,'string'),get(handles.p9,'string')))
         
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game ==2
        game=1;
    end
    
end

% --- Executes on button press in p7.
function p7_Callback(hObject, eventdata, handles)
% hObject    handle to p7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p7,'string'))
    if game==1
        set(handles.p7,'string','O')
        if (strcmp(get(handles.p7,'string'),get(handles.p4,'string')) && strcmp(get(handles.p7,'string'),get(handles.p1,'string')))||...
           (strcmp(get(handles.p7,'string'),get(handles.p8,'string')) && strcmp(get(handles.p7,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p7,'string'),get(handles.p5,'string')) && strcmp(get(handles.p7,'string'),get(handles.p3,'string')))
            
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p7,'string','X')
        if (strcmp(get(handles.p7,'string'),get(handles.p4,'string')) && strcmp(get(handles.p7,'string'),get(handles.p1,'string')))||...
           (strcmp(get(handles.p7,'string'),get(handles.p8,'string')) && strcmp(get(handles.p7,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p7,'string'),get(handles.p5,'string')) && strcmp(get(handles.p7,'string'),get(handles.p3,'string')))
            
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end

    
end

% --- Executes on button press in p8.
function p8_Callback(hObject, eventdata, handles)
% hObject    handle to p8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p8,'string'))
    if game==1
        set(handles.p8,'string','O')
        if (strcmp(get(handles.p8,'string'),get(handles.p7,'string')) && strcmp(get(handles.p8,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p8,'string'),get(handles.p5,'string')) && strcmp(get(handles.p8,'string'),get(handles.p2,'string')))
            
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p8,'string','X')
        if (strcmp(get(handles.p8,'string'),get(handles.p7,'string')) && strcmp(get(handles.p8,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p8,'string'),get(handles.p5,'string')) && strcmp(get(handles.p8,'string'),get(handles.p2,'string')))
           msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end
    
end

% --- Executes on button press in p9.
function p9_Callback(hObject, eventdata, handles)
% hObject    handle to p9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p9,'string'))
    if game==1
        set(handles.p9,'string','O')
        if (strcmp(get(handles.p9,'string'),get(handles.p8,'string')) && strcmp(get(handles.p9,'string'),get(handles.p7,'string')))||...
           (strcmp(get(handles.p9,'string'),get(handles.p6,'string')) && strcmp(get(handles.p9,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p9,'string'),get(handles.p5,'string')) && strcmp(get(handles.p9,'string'),get(handles.p1,'string')))
          
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p9,'string','X')
        if (strcmp(get(handles.p9,'string'),get(handles.p8,'string')) && strcmp(get(handles.p9,'string'),get(handles.p7,'string')))||...
           (strcmp(get(handles.p9,'string'),get(handles.p6,'string')) && strcmp(get(handles.p9,'string'),get(handles.p3,'string')))||...
           (strcmp(get(handles.p9,'string'),get(handles.p5,'string')) && strcmp(get(handles.p9,'string'),get(handles.p1,'string')))
            
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
    end
    
end

% --- Executes on button press in p5.
function p5_Callback(hObject, eventdata, handles)
% hObject    handle to p5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global game

if isempty(get(handles.p5,'string'))
    if game==1
        set(handles.p5,'string','O')
        if (strcmp(get(handles.p5,'string'),get(handles.p4,'string')) && strcmp(get(handles.p5,'string'),get(handles.p6,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p2,'string')) && strcmp(get(handles.p5,'string'),get(handles.p8,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p1,'string')) && strcmp(get(handles.p5,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p3,'string')) && strcmp(get(handles.p5,'string'),get(handles.p7,'string')))
           
            msgbox('player O won')
        end
    end
    
    if game==2
        set(handles.p5,'string','X')
        if (strcmp(get(handles.p5,'string'),get(handles.p4,'string')) && strcmp(get(handles.p5,'string'),get(handles.p6,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p2,'string')) && strcmp(get(handles.p5,'string'),get(handles.p8,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p1,'string')) && strcmp(get(handles.p5,'string'),get(handles.p9,'string')))||...
           (strcmp(get(handles.p5,'string'),get(handles.p3,'string')) && strcmp(get(handles.p5,'string'),get(handles.p7,'string')))
           
            msgbox('player X won')
        end
    end
    
    if game==1
        game=2;
    elseif game==2
        game=1;
     end
    
end
