using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAssortmentCheck.Models
{
    public partial class DataEntities : DbContext
    {
        private static DataEntities _context;

        public static DataEntities GetContext()
        {
            if (_context == null)
            {
                _context = new DataEntities();
            }
            return _context;
        }
    }
}
