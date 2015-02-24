## -*- coding: utf-8 -*-


## OpenFisca -- A versatile microsimulation software
## By: OpenFisca Team <contact@openfisca.fr>
##
## Copyright (C) 2011, 2012, 2013, 2014, 2015 OpenFisca Team
## https://github.com/openfisca
##
## This file is part of OpenFisca.
##
## OpenFisca is free software; you can redistribute it and/or modify
## it under the terms of the GNU Affero General Public License as
## published by the Free Software Foundation, either version 3 of the
## License, or (at your option) any later version.
##
## OpenFisca is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Affero General Public License for more details.
##
## You should have received a copy of the GNU Affero General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.


<%inherit file="/france/fr/tree/outils/trace.mako"/>


<%def name="h1_content()" filter="trim">
Trace
</%def>


<%def name="simulation_script_content()" filter="trim">
window.defaultSimulationText = ${simulation_text or u'''\
{
  "scenarios": [
    {
      "test_case": {
        "foyers_fiscaux": [
          {
            "declarants": ["ind0", "ind1"]
          }
        ],
        "individus": [
          {
            "id": "ind0",
            "sali": 15000
          },
          {
            "id": "ind1"
          }
        ],
        "menages": [
          {
            "personne_de_reference": "ind0",
            "conjoint": "ind1"
          }
        ]
      },
      "period": "2011"
    }
  ],
  "variables": ["revdisp"]
}''' | n, js};
</%def>
