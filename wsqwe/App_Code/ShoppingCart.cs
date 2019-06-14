using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

public class ShoppingCart
{
    public int ID { set; get; }
    public string Name { set; get; }
    public int Price { set; get; }
    public int Count { set; get; }
    public string ImageFileName { get; set; }
    public int Totalprice { get; set; }
}

public class ShoppingCartHandler
{
    private string SourcesPath;
    private string ssql;

    public ShoppingCartHandler()
    {
        SourcesPath = WebConfigurationManager.ConnectionStrings["CaseDBConnectionString1"].ConnectionString;
    }

    public List<ShoppingCart> GetShoppingCartList(Dictionary<int, int> shopping, List<Product> prodList)
    {
        var query = from prod in prodList
                    select new ShoppingCart
                    {
                        ID = prod.Id,
                        Name = prod.Name,
                        Price = prod.Price,
                        Count = shopping[prod.Id],
                        ImageFileName = prod.ImageFileName,
                        Totalprice = prod.Price * shopping[prod.Id]
                    };

        return query.ToList();
    }
}