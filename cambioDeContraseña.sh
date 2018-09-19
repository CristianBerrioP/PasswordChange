#!/bin/bash
#--------------------------------------------------#
#---Script para el cambio de contraseña------------#
#---Autor: Cristian Berrio-------------------------#
#---Universidad de Antioquia-----------------------#
#---Este script fue realizado para el -------------#
#--- Laboratorio Integrado de Sistemas-------------#
#--------------------------------------------------#
clear
actualP='pass'
newP='user:pass'
userName='pass'
textScript="echo '$actualP' | sudo -S su; echo '$newP' | sudo chpasswd -c SHA512"
for ip in 192.168.192.{1..20}; do
  sshpass -p "$actualP" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
done
for ip in 192.168.193.{1..15}; do
  sshpass -p "$actualP" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
done
for ip in 192.168.194.{1..30}; do
  sshpass -p "$actualP" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
done
