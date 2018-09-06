{application,vex,
             [{applications,[kernel,stdlib,elixir,eex]},
              {description,"vex"},
              {modules,['Elixir.Vex','Elixir.Vex.Blank',
                        'Elixir.Vex.Blank.Any','Elixir.Vex.Blank.Atom',
                        'Elixir.Vex.Blank.BitString','Elixir.Vex.Blank.Float',
                        'Elixir.Vex.Blank.Integer','Elixir.Vex.Blank.List',
                        'Elixir.Vex.Blank.Map','Elixir.Vex.Blank.Tuple',
                        'Elixir.Vex.Extract','Elixir.Vex.Extract.List',
                        'Elixir.Vex.Extract.Map','Elixir.Vex.Extract.Struct',
                        'Elixir.Vex.Extract.Tuple',
                        'Elixir.Vex.InvalidValidatorError',
                        'Elixir.Vex.Struct','Elixir.Vex.Validator',
                        'Elixir.Vex.Validator.Behaviour',
                        'Elixir.Vex.Validator.ErrorMessage',
                        'Elixir.Vex.Validator.Skipping',
                        'Elixir.Vex.Validator.Source',
                        'Elixir.Vex.Validator.Source.Atom',
                        'Elixir.Vex.Validator.Source.List',
                        'Elixir.Vex.Validators',
                        'Elixir.Vex.Validators.Absence',
                        'Elixir.Vex.Validators.Acceptance',
                        'Elixir.Vex.Validators.By',
                        'Elixir.Vex.Validators.Confirmation',
                        'Elixir.Vex.Validators.Exclusion',
                        'Elixir.Vex.Validators.Format',
                        'Elixir.Vex.Validators.Inclusion',
                        'Elixir.Vex.Validators.Length',
                        'Elixir.Vex.Validators.Presence']},
              {registered,[]},
              {vsn,"0.6.0"}]}.