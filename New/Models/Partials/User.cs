using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAssortmentCheck.Models
{
    public partial class User
    {
        public string GetFio
        {
            get
            {
                return $"{LastName} {FirstName} ";
            }
        }

    }
}
