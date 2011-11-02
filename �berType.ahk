;    ÜberType - Text substitutions for German characters
;    Copyright 2011, Tyler Wayne
;    Version 0.1
;
;    This program is copyrighted under the terms of the
;    Eclipse Public License, version 1.0. The full license
;    should be included via the file LICENSE.txt. If that
;    is not the case, please see the following URL:
;    <http://www.opensource.org/licenses/EPL-1.0>
    
#NoEnv
#SingleInstance Force
#Persistent
SendMode Input

replace(trigger, char)
{
	Send %char%
	Input OutputVar, L1 V, {Backspace}
	if (ErrorLevel = "EndKey:Backspace")
	{
		StringReplace trigger, trigger, ".", ""
		Send %trigger%
	}
	return
}

:*?C:a.e::
	replace("a.e", "ä")
	return

:*?C:o.e::
	replace("o.e", "ö")
	return

:*?C:u.e::
	replace("u.e", "ü")
	return

:*?C:A.e::
	replace("A.e", "Ä")
	return

:*?C:O.e::
	replace("O.e", "Ö")
	return

:*?C:U.e::
	replace("U.e", "Ü")
	return

:*?C:A.E::
	replace("A.E", "Ä")
	return

:*?C:O.E::
	replace("O.E", "Ö")
	return

:*?C:U.E::
	replace("U.E", "Ü")
	return

:*?C:s.s::
	replace("s.s", "ß")
	return

:*?C:S.S::
	replace("S.S", "ß")
	return