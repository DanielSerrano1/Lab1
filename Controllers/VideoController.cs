using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using MVCPlantilla.Utilerias;
using System.Data.SqlClient;

namespace MvcPlantilla1.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            ViewData["datavideo"] = BaseHelper.ejecutarConsulta("select * from video", CommandType.Text);
            return View();
        }
        public ActionResult Agregar()
        {
            return View();
        }
        public ActionResult Modificar()
        {
            return View();
        }
        public ActionResult Eliminar()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Create(int idvideo,
            string titulo,
            int repro,
            string url)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idvideo", idvideo));
            Parametros.Add(new SqlParameter("@tittle", titulo));
            Parametros.Add(new SqlParameter("@rep", repro));
            Parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("insert into video values(@idvideo,@tittle,@rep,@url)", CommandType.Text, Parametros);

            return View("mensaje");
        }


        [HttpPost]
        public ActionResult Edit(int idvideo,
            string titulo,
            int repro,
            string url)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idvideo", idvideo));
            Parametros.Add(new SqlParameter("@tittle", titulo));
            Parametros.Add(new SqlParameter("@rep", repro));
            Parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("update video set titulo=@tittle, repro=@rep,url=@url where idvideo=@idvideo", CommandType.Text, Parametros);

            return View("mensaje");
        }

        [HttpPost]
        public ActionResult Delete(int idvideo)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idvideo", idvideo));

            BaseHelper.ejecutarSentencia("delete from video where idvideo=@idvideo", CommandType.Text, Parametros);

            return View("mensaje");
        }

    }
}
