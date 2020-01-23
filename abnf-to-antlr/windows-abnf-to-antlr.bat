


rem These links explain Antlr stuff
rem https://github.com/antlr/antlr4/blob/master/doc/getting-started.md
rem https://github.com/antlr/antlr4/tree/master/runtime/CSharp

rem About abnf to antlr
rem http://www.robertpinchbeck.com/abnf_to_antlr/Default.aspx
rem https://github.com/rpinchbeck/Abnf-To-Antlr

rem used for debugging, testing
rem doskey antlr4=java -jar antlr-4.7.2-complete.jar org.antlr.v4.Tool $*
rem doskey grun=java -jar antlr-4.7.2-complete.jar org.antlr.v4.gui.TestRig $*
rem command for building java output
rem java -jar antlr-4.7.2-complete.jar sip.g4
rem "C:\Program Files\Java\jdk1.7.0_80\bin\javac.exe" -cp antlr-4.7.2-complete.jar *.java



rem add your own output language possibly

echo grammar sdp; >sdp.g4
Abnf-To-Antlr-1.5.1-Binaries\AbnfToAntlr.exe Sdp.abnf >>sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Go -o ..\output-go sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Java -o ..\output-java sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=CSharp -o ..\output-csharp sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Cpp -o ..\output-cpp sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Javascript -o ..\output-js sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Python -o ..\output-python sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=Swift -o ..\output-swift sdp.g4
java -jar antlr\antlr-4.7.2-complete.jar -Dlanguage=PHP -o ..\output-php sdp.g4





