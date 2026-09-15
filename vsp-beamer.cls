\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vsp-beamer}

% -------------------------------- %
% Load package <kvoptions> : Process key value options
\RequirePackage{kvoptions}
% Define kvoptions prefix
\SetupKeyvalOptions{family=vspbeamer,prefix=vspbeamer@}
% Define key <theme> : Select the VSP theme
\DeclareStringOption[tutorial-red]{theme}
% Process key
\ProcessKeyvalOptions{vspbeamer}

% -------------------------------- %
% Load document class <beamer>
% aspectratio=169 -> Use 16:9 frame
% 10pt            -> Use 10pt base font
\LoadClass[aspectratio=169,10pt]{beamer}

% -------------------------------- %
% Load package <ctex> : Chinese support
% UTF8        -> Use UTF-8 encoding
% fontset=none -> Disable ctex font setting
\RequirePackage[UTF8,fontset=none]{ctex}

% -------------------------------- %
% Load the selected beamer theme
\usetheme{\vspbeamer@theme}
