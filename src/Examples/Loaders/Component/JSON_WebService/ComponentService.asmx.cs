﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;

namespace Ext.Net.Examples.Examples.Loaders.Component.JSON_WebService
{
    /// <summary>
    ///
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class ComponentService : System.Web.Services.WebService
    {
        [WebMethod]
        public string Items()
        {
            return ComponentLoader.ToConfig(new List<AbstractComponent>()
                {
                    new Panel{Title="Item 1", Icon = Icon.UserBrown},
                    new Panel{Title="Item 2", Icon = Icon.UserGray},
                    new Panel{Title="Item 3", Icon = Icon.UserGreen}
                }
            );
        }

        [WebMethod]
        public string UserControl()
        {
            return ComponentLoader.ToConfig("~/Examples/Loaders/_Shared/Items.ascx");
        }
    }
}
