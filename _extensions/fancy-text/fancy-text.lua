-- shortcode that provides a nicely formatted 'LaTeX' string
function latex()
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '{\\LaTeX}')
  elseif quarto.doc.isFormat("html") then
    return pandoc.Math('InlineMath', "\\LaTeX")
  else 
    return pandoc.Span('LaTeX')
  end
end
  
-- shortcode that provides a nicely formatted 'bibtex' string
function bibtex()
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '\\textsc{Bib}{\\TeX}')
  elseif quarto.doc.isFormat("html") then
    return pandoc.RawBlock('html', '<span style="font-variant: small-caps;">Bib</span><span style="letter-spacing:-2px;">T</span><sub style="font-size: inherit; letter-spacing:-1px;">E</sub>X')
  else
    return pandoc.Span('BibTeX')
  end
end

function smallcaps(el)
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '\\textsc{' .. pandoc.utils.stringify(el) .. '}')
  elseif quarto.doc.isFormat("html") then
    return pandoc.RawBlock('html', '<span style="font-variant: small-caps;">' .. pandoc.utils.stringify(el) .. '</span>')
  else
    return pandoc.utils.stringify(el)
  end
end

function ldots()
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '\\ldots')
  elseif quarto.doc.isFormat("html") then
    return pandoc.RawBlock('html', '&#8230;')
  else
    return "..."
  end
end

function vdots()
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '\\vdots')
  elseif quarto.doc.isFormat("html") then
    return pandoc.RawBlock('html', '&#8942;')
  else
    return "..."
  end
end

function ddots() 
  if quarto.doc.isFormat("pdf") then
    return pandoc.RawBlock('tex', '\\ddots')
  elseif quarto.doc.isFormat("html") then
    return pandoc.RawBlock('html', '&#8945;')
  else
    return "..."
  end
end