<% 
dim a(20)
a(1)="CSS: Cascading Style Sheets�������ʽ��"
a(2)="CGI��Common Gateway Interface��ͨ�����ؽӿڣ�" 
a(3)="DCD: Document Content Description for XML: XML�ļ���������"
a(4)="DTD: Document Type Definition���ļ����Ͷ���" 
a(5)="HTML��HyperText Markup Language�����ı�������ԣ�" 
a(6)="JVM: Java Virtual Machine, Java�����"
a(7)="SGML: Standard Generalized Markup Language����׼ͨ�ñ������ "
a(8)="XML: Extensible Markup Language������չ������ԣ�"
a(9)="XSL: Extensible Style Sheet Language������չ������ԣ�" 
a(10)="DNS��Domain Name System������ϵͳ��"
a(11)="IMAP4: Internet Message Access Protocol Version 4�����İ���������Ϣ��ȡЭ�� "
a(12)="Internet����������" 
a(13)="IP��Internet Protocol������Э�飩" 
a(14)="MODEM��Modulator Demodulator�����ƽ������" 
a(15)="POP3: Post Office Protocol Version 3������������ʾ�Э��" 
a(16)="RDF: Resource Description Framework����Դ�������"
a(17)="SNMP��Simple Network Management Protocol�����������Э�飩" 
a(18)="SMTP��Simple Mail Transfer Protocol�����ʼ�����Э�飩" 
a(19)="VPN: virtual private network�����������" 
a(20)="WWW��World Wide Web����ά��������������һ����"

Response.AddHeader "Content-Type","text/html;charset=gb2312" 
q=request.querystring("q")
if len(q)>0 then
    hint=""
    for i=1 to ubound(a)
        x1=ucase(mid(q,1,len(q)))
        x2=ucase(mid(a(i),1,len(q)))
        if x1=x2 then
            if hint="" then
                hint="<option value="""&a(i)&""">"&a(i)&"</option>"
            else
                hint=hint & "<option value="""&a(i)&""">"&a(i)&"</option>"
            end if
        end if
    next
end if

if hint="" then
    response.write("<select><option>û��ƥ�����</option></select>")
else
    response.write("<select onblur='ok(this)'  onchange='ok(this)'>"&hint&"</select>")
end if

%>
