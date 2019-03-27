﻿within ;
package TILMedia "TILMedia-Library with thermophysical properties of Fluids and Solids"
  import SI = Modelica.SIunits;


// access=Access.nonPackageDuplicate
annotation (
preferedView="info",
version="1.4.0 ClaRa",
  uses(Modelica(version="3.2.2")),
Documentation(info="<html>
<p><img src=\"modelica://TILMedia/Images/infoTILMedia.png\" ></p>
</html>"),                 Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={
                         Bitmap(
        extent={{-100,-100},{100,100}},
        imageSource=
            "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",
        fileName="modelica://TILMedia/Images/TILMedia.png")}),
  Protection(access=Access.documentation,
      __Dymola_showVariables=true,
      __Dymola_showDiagnostics=true,
      __Dymola_showStatistics=true,
      __Dymola_showFlat=true),
 conversion(
    from(version="2.0.4", script="modelica://TILMedia/Scripts/ConvertTILMedia_to_3.0.0.mos"),
    from(version="2.1.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_to_3.0.0.mos"),
    from(version="2.1.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_to_3.0.0.mos"),
    from(version="2.1.2", script="modelica://TILMedia/Scripts/ConvertTILMedia_to_3.0.0.mos"),
    from(version="3.0.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.0.0.mos"),
    from(version="3.0.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.0.1.mos"),
    from(version="3.0.2", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.0.2.mos"),
    from(version="3.1.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.1.0.mos"),
    from(version="3.2.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.2.0.mos"),
    from(version="3.2.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.2.1.mos"),
    from(version="3.2.2", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.2.2.mos"),
    from(version="3.2.3", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.2.3.mos"),
    from(version="3.3.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.3.0.mos"),
    from(version="3.3.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.3.1.mos"),
    from(version="3.4.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.4.0.mos"),
    from(version="3.4.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.4.1.mos"),
    from(version="3.4.2", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.4.2.mos"),
    from(version="3.5.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.5.0.mos"),
    from(version="3.5.1", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.5.1.mos"),
    from(version="3.6.0", script="modelica://TILMedia/Scripts/ConvertTILMedia_from_3.6.0.mos")));
end TILMedia;
