@echo off
title Sorteio Numerico - Atividade SI
mode 60,30
color 0a
:inicio
set /a count=6
set /a numero=(%Random% %% 50) + 1
:tela
cls
set /a count=%count%-1 
echo                         ( o   o )
echo                 =====ooO== (_) ==ooO=====                                                                  
echo                    Bem-vindo ao SORTEIO
echo ----------------------------------------------------------
echo               Adivinhe o numero entre 0 e 50
echo ----------------------------------------------------------
echo                Quantidade de tentativas: %count%
echo.
set /p palpite=Digite seu palpite:

if %palpite% == %numero% (
    echo.
    echo Voce acertou! O numero era %numero%
    goto:msg
) else (
    echo.

    if %count% == 0 (
        echo Voce perdeu! O numero era %numero%
		goto:msg
        )

    if %palpite% lss %numero% (echo Voce errou, chute mais alto...) else (echo Voce errou, chute mais baixo...)
   
    echo.
    pause > null
    goto:tela
)

:msg
echo.
set /p resp=Deseja jogar novamente? [S/N]
if %resp% == S (
    goto:inicio
    ) else (
        exit
    )
